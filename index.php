<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <title>Submit Issue</title>
  <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet">
</head>
<body>
<div class="container mt-5">
  <div class="bg-light p-4 border rounded">
    <h4 class="mb-4">Submit Issue</h4>
    <form action="submit.php" method="POST" enctype="multipart/form-data">

      <!-- Issue Name -->
      <div class="mb-3">
        <label for="issue_name" class="form-label">Issue Name <span class="text-danger">*</span></label>
        <input type="text" class="form-control" id="issue_name" name="issue_name" required>
      </div>

      <!-- Issue Description -->
      <div class="mb-3">
        <label for="issue_description" class="form-label">Issue Description</label>
        <textarea class="form-control" id="issue_description" name="issue_description" rows="4"></textarea>
      </div>

      <!-- File Upload -->
      <div class="mb-3">
        <label for="attachment" class="form-label">Attach File</label>
        <input type="file" class="form-control" id="attachment" name="attachment">
        <div class="form-text">Drop files or add attachments here...</div>
      </div>

      <!-- Email Address -->
      <div class="mb-3">
        <label for="email" class="form-label">Email Address <span class="text-danger">*</span></label>
        <input type="email" class="form-control" id="email" name="email" required>
      </div>

      <!-- Note -->
      <p class="text-danger small">
        Note: Email ID is used to know the reporter of this bug. Submitting your email ID will not add you as a user or give you access to portal data.
      </p>

      <!-- Buttons -->
      <button type="submit" class="btn btn-warning text-white">Save</button>
      <a href="#" class="btn btn-outline-warning">Cancel</a>
    </form>
  </div>
</div>
</body>
</html>
