
package Paws::Backup::ListFrameworks;
  use Moose;
  has MaxResults => (is => 'ro', isa => 'Int', traits => ['ParamInQuery'], query_name => 'MaxResults');
  has NextToken => (is => 'ro', isa => 'Str', traits => ['ParamInQuery'], query_name => 'NextToken');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'ListFrameworks');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/audit/frameworks');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'GET');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Backup::ListFrameworksOutput');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Backup::ListFrameworks - Arguments for method ListFrameworks on L<Paws::Backup>

=head1 DESCRIPTION

This class represents the parameters used for calling the method ListFrameworks on the
L<AWS Backup|Paws::Backup> service. Use the attributes of this class
as arguments to method ListFrameworks.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to ListFrameworks.

=head1 SYNOPSIS

    my $backup = Paws->service('Backup');
    my $ListFrameworksOutput = $backup->ListFrameworks(
      MaxResults => 1,             # OPTIONAL
      NextToken  => 'Mystring',    # OPTIONAL
    );

    # Results:
    my $Frameworks = $ListFrameworksOutput->Frameworks;
    my $NextToken  = $ListFrameworksOutput->NextToken;

    # Returns a L<Paws::Backup::ListFrameworksOutput> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/backup/ListFrameworks>

=head1 ATTRIBUTES


=head2 MaxResults => Int

The number of desired results from 1 to 1000. Optional. If unspecified,
the query will return 1 MB of data.



=head2 NextToken => Str

An identifier that was returned from the previous call to this
operation, which can be used to return the next set of items in the
list.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method ListFrameworks in L<Paws::Backup>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

