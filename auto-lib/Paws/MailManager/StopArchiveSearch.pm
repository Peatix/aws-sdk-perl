
package Paws::MailManager::StopArchiveSearch;
  use Moose;
  has SearchId => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'StopArchiveSearch');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::MailManager::StopArchiveSearchResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::MailManager::StopArchiveSearch - Arguments for method StopArchiveSearch on L<Paws::MailManager>

=head1 DESCRIPTION

This class represents the parameters used for calling the method StopArchiveSearch on the
L<MailManager|Paws::MailManager> service. Use the attributes of this class
as arguments to method StopArchiveSearch.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to StopArchiveSearch.

=head1 SYNOPSIS

    my $mail-manager = Paws->service('MailManager');
    my $StopArchiveSearchResponse = $mail -manager->StopArchiveSearch(
      SearchId => 'MySearchId',

    );

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/mail-manager/StopArchiveSearch>

=head1 ATTRIBUTES


=head2 B<REQUIRED> SearchId => Str

The identifier of the search job to stop.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method StopArchiveSearch in L<Paws::MailManager>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

