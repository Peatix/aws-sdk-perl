
package Paws::MailManager::ListAddressListImportJobs;
  use Moose;
  has AddressListId => (is => 'ro', isa => 'Str', required => 1);
  has NextToken => (is => 'ro', isa => 'Str');
  has PageSize => (is => 'ro', isa => 'Int');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'ListAddressListImportJobs');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::MailManager::ListAddressListImportJobsResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::MailManager::ListAddressListImportJobs - Arguments for method ListAddressListImportJobs on L<Paws::MailManager>

=head1 DESCRIPTION

This class represents the parameters used for calling the method ListAddressListImportJobs on the
L<MailManager|Paws::MailManager> service. Use the attributes of this class
as arguments to method ListAddressListImportJobs.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to ListAddressListImportJobs.

=head1 SYNOPSIS

    my $mail-manager = Paws->service('MailManager');
    my $ListAddressListImportJobsResponse =
      $mail -manager->ListAddressListImportJobs(
      AddressListId => 'MyAddressListId',
      NextToken     => 'MyPaginationToken',    # OPTIONAL
      PageSize      => 1,                      # OPTIONAL
      );

    # Results:
    my $ImportJobs = $ListAddressListImportJobsResponse->ImportJobs;
    my $NextToken  = $ListAddressListImportJobsResponse->NextToken;

    # Returns a L<Paws::MailManager::ListAddressListImportJobsResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/mail-manager/ListAddressListImportJobs>

=head1 ATTRIBUTES


=head2 B<REQUIRED> AddressListId => Str

The unique identifier of the address list for listing import jobs.



=head2 NextToken => Str

If you received a pagination token from a previous call to this API,
you can provide it here to continue paginating through the next page of
results.



=head2 PageSize => Int

The maximum number of import jobs that are returned per call. You can
use NextToken to retrieve the next page of jobs.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method ListAddressListImportJobs in L<Paws::MailManager>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

