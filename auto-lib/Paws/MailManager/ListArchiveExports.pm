
package Paws::MailManager::ListArchiveExports;
  use Moose;
  has ArchiveId => (is => 'ro', isa => 'Str', required => 1);
  has NextToken => (is => 'ro', isa => 'Str');
  has PageSize => (is => 'ro', isa => 'Int');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'ListArchiveExports');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::MailManager::ListArchiveExportsResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::MailManager::ListArchiveExports - Arguments for method ListArchiveExports on L<Paws::MailManager>

=head1 DESCRIPTION

This class represents the parameters used for calling the method ListArchiveExports on the
L<MailManager|Paws::MailManager> service. Use the attributes of this class
as arguments to method ListArchiveExports.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to ListArchiveExports.

=head1 SYNOPSIS

    my $mail-manager = Paws->service('MailManager');
    my $ListArchiveExportsResponse = $mail -manager->ListArchiveExports(
      ArchiveId => 'MyArchiveId',
      NextToken => 'MyPaginationToken',    # OPTIONAL
      PageSize  => 1,                      # OPTIONAL
    );

    # Results:
    my $Exports   = $ListArchiveExportsResponse->Exports;
    my $NextToken = $ListArchiveExportsResponse->NextToken;

    # Returns a L<Paws::MailManager::ListArchiveExportsResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/mail-manager/ListArchiveExports>

=head1 ATTRIBUTES


=head2 B<REQUIRED> ArchiveId => Str

The identifier of the archive.



=head2 NextToken => Str

If NextToken is returned, there are more results available. The value
of NextToken is a unique pagination token for each page. Make the call
again using the returned token to retrieve the next page.



=head2 PageSize => Int

The maximum number of archive export jobs that are returned per call.
You can use NextToken to obtain further pages of archives.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method ListArchiveExports in L<Paws::MailManager>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

