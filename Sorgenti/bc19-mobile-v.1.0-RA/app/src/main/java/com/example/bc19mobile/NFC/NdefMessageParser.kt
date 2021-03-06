package com.example.bc19mobile.NFC


import android.nfc.NdefMessage
import android.nfc.NdefRecord
import java.util.*

object NdefMessageParser {
    fun parse(message: NdefMessage): List<ParsedNdefRecord> {
        return getRecords(message.records)

    }

    fun getRecords(records: Array<NdefRecord?>?): List<ParsedNdefRecord> {
        val elements: MutableList<ParsedNdefRecord> = ArrayList<ParsedNdefRecord>()
        if (records != null) {
            for (record in records) {
                if (record?.let { UriRecord.isUri(it) } == true) {
                    elements.add(UriRecord.parse(record))
                } else if (record?.let { TextRecord.isText(it) } == true) {
                    elements.add(TextRecord.parse(record))
                } else if (SmartPoster.isPoster(record)) {
                    record?.let { SmartPoster.parse(it) }?.let { elements.add(it) }
                } else {
                    //elements.add(object : ParsedNdefRecord() {
                    elements.add(object : ParsedNdefRecord {
                        override fun str(): String {
                            return record?.let { String(bytes = it?.payload) }.toString()
                        }
                    })
                }
            }
        }
        return elements
    }
}