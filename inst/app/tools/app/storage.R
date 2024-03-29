## Code started from https://shiny.rstudio.com/reference/shiny/latest/modalDialog.html

# Show modal when storage navPanel is clicked.
observeEvent(input$storageNav, {
  showModal(
    modalDialog(
      radioButtons(inputId = "on_server", label = "Storage location:",
                   choiceNames = list(
                     HTML("<i class='fa fa-cloud'></i><span style='padding-left: 5px;'>QUBES</span>"),
                     HTML("<i class='fa fa-hdd-o'></i><span style='padding-left: 5px;'>Computer</span>")
                   ),
                   choiceValues = list(
                     "TRUE",
                     "FALSE"
                   ),
                   selected = state_init("on_server", "FALSE")),
      size = c("s"),
      easyClose = TRUE,
      footer = modalButton("Dismiss")
    )
  )
})

