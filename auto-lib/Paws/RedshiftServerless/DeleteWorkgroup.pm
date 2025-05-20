
package Paws::RedshiftServerless::DeleteWorkgroup;
  use Moose;
  has WorkgroupName => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'workgroupName' , required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DeleteWorkgroup');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::RedshiftServerless::DeleteWorkgroupResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::RedshiftServerless::DeleteWorkgroup - Arguments for method DeleteWorkgroup on L<Paws::RedshiftServerless>

=head1 DESCRIPTION

This class represents the parameters used for calling the method DeleteWorkgroup on the
L<Redshift Serverless|Paws::RedshiftServerless> service. Use the attributes of this class
as arguments to method DeleteWorkgroup.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to DeleteWorkgroup.

=head1 SYNOPSIS

    my $redshift-serverless = Paws->service('RedshiftServerless');
    my $DeleteWorkgroupResponse = $redshift -serverless->DeleteWorkgroup(
      WorkgroupName => 'MyWorkgroupName',

    );

    # Results:
    my $Workgroup = $DeleteWorkgroupResponse->Workgroup;

    # Returns a L<Paws::RedshiftServerless::DeleteWorkgroupResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/redshift-serverless/DeleteWorkgroup>

=head1 ATTRIBUTES


=head2 B<REQUIRED> WorkgroupName => Str

The name of the workgroup to be deleted.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method DeleteWorkgroup in L<Paws::RedshiftServerless>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

