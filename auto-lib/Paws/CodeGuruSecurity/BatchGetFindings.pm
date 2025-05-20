
package Paws::CodeGuruSecurity::BatchGetFindings;
  use Moose;
  has FindingIdentifiers => (is => 'ro', isa => 'ArrayRef[Paws::CodeGuruSecurity::FindingIdentifier]', traits => ['NameInRequest'], request_name => 'findingIdentifiers', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'BatchGetFindings');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/batchGetFindings');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::CodeGuruSecurity::BatchGetFindingsResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::CodeGuruSecurity::BatchGetFindings - Arguments for method BatchGetFindings on L<Paws::CodeGuruSecurity>

=head1 DESCRIPTION

This class represents the parameters used for calling the method BatchGetFindings on the
L<Amazon CodeGuru Security|Paws::CodeGuruSecurity> service. Use the attributes of this class
as arguments to method BatchGetFindings.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to BatchGetFindings.

=head1 SYNOPSIS

    my $codeguru-security = Paws->service('CodeGuruSecurity');
    my $BatchGetFindingsResponse = $codeguru -security->BatchGetFindings(
      FindingIdentifiers => [
        {
          FindingId => 'MyString',
          ScanName  => 'MyString',

        },
        ...
      ],

    );

    # Results:
    my $FailedFindings = $BatchGetFindingsResponse->FailedFindings;
    my $Findings       = $BatchGetFindingsResponse->Findings;

    # Returns a L<Paws::CodeGuruSecurity::BatchGetFindingsResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/codeguru-security/BatchGetFindings>

=head1 ATTRIBUTES


=head2 B<REQUIRED> FindingIdentifiers => ArrayRef[L<Paws::CodeGuruSecurity::FindingIdentifier>]

A list of finding identifiers. Each identifier consists of a
C<scanName> and a C<findingId>. You retrieve the C<findingId> when you
call C<GetFindings>.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method BatchGetFindings in L<Paws::CodeGuruSecurity>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

